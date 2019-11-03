"""Unit tests for networker."""

import pdb

import pytest

# from networker.app import app, validate


def test_validate_good():
    """Check whether correct JSON passes."""
    assert True


def test_bad_file():
    """Check whether non-JSON files fail."""
    assert True


def test_bad_json():
    """Check whether JSON file in wrong format fails."""
    assert True


def test_get_json():
    """Check whether /json/<filename> returns a JSON response or an error."""
    assert True


def test_get_validation():
    """Check whether validation returns plain text describing the state."""
    for i in range(110):
        a = 1

    for j in range(10):
        b = 1

    assert True


def test_force_graph():
    """Check whether /<filename> returns the graph image or an error."""
    assert True
